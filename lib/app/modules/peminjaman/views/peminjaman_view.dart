import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/response_pinjam.dart';
import '../controllers/peminjaman_controller.dart';

class PeminjamanView extends GetView<PeminjamanController> {
  const PeminjamanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PeminjamanView'),
        centerTitle: true,
      ),
      body: controller.obx((state) => ListView.separated(
        itemCount: state!.length,
        itemBuilder: (context, index){
          DataPinjam datapinjam = state[index];
          return ListTile(
            title: Text("${datapinjam.user?.username}"),
            subtitle: Text("Penulis ${datapinjam.book?.judul}\n${datapinjam.book?.penerbit} - ${datapinjam.book?.tahunTerbit}"),
          );
        }, separatorBuilder: ( context, index) =>Divider(),
      ))
    );
  }
}
