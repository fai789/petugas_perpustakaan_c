import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../data/constan/endpoin.dart';
import '../../../data/model/response_pinjam.dart';
import '../../../data/provider/api_provider.dart';

class PeminjamanController extends GetxController with StateMixin<List<DataPinjam>> {
  //TODO: Implement PeminjamanController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
  getData() async {
    change(null, status:RxStatus.loading());
    try {
      final response = await ApiProvider.instance().get(Endpoint.pinjam,
      );
      if (response.statusCode == 200) {
        final ResponsePinjam responseBook = ResponsePinjam.fromJson(response.data);
        if(responseBook.data!.isEmpty){
          change(null, status: RxStatus.empty());
        }else{
          change(responseBook.data, status: RxStatus.success());
        } }else{
        change(null, status: RxStatus.error("Gagal mengambil data"));
      }
    } on DioException catch (e) {
      if (e.response != null) {
        if (e.response?.data != null)
          change(null, status: RxStatus.error("${e.response?.data['message']}"));
      } else {
        change(null, status: RxStatus.error( e.message ?? ""));
      }
    } catch (e) {
      change(null, status: RxStatus.error(e.toString()));
    }
  }
}
