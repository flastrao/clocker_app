import 'package:clocker_app/src/task/model/area_model.dart';
import 'package:clocker_app/src/task/model/task_model.dart';

const String staggingUrl =
    'http://ec2-177-71-159-147.sa-east-1.compute.amazonaws.com:12345/api';

const String localUrl = "http://192.168.1.3:12345/api";

List<TaskModel> responseBackendTasks = [
  TaskModel(
    id: "111",
    title: "Hacer endpoint",
    description: "Hagan un endpoint",
    priority: "Ultra",
    area: "Backend",
    status: "",
    finishTime: "a asl 12",
  ),
  TaskModel(
    id: "111",
    title: "Hacer endpoint2",
    description: "Hagan un endpoint2",
    priority: "Ultra",
    area: "Backend",
    status: "",
    finishTime: "a asl 12",
  )
];

////////////////

List<TaskModel> responseMobileTasks = [
  TaskModel(
    id: "211",
    title: "Hacer un emoji",
    description: "Hagan un em oji",
    priority: "High",
    area: "Mobile",
    status: "",
    finishTime: "a asl 12",
  ),
  TaskModel(
    id: "211",
    title: "Hacer un emoji2",
    description: "Hagan un em oji2",
    priority: "High",
    area: "Mobile",
    status: "",
    finishTime: "a asl 12",
  ),
];

List<TaskModel> responseIotTasks = [
  TaskModel(
    id: "111",
    title: "Hacer ?????",
    description: "Hagan un ????",
    priority: "Ultra",
    area: "Iot",
    status: "",
    finishTime: "a asl 12",
  )
];

List<TaskModel> responseWebTasks = [
  TaskModel(
    id: "111",
    title: "Hacer una pagina",
    description: "Hagan una pag",
    priority: "Ultra",
    area: "Web",
    status: "",
    finishTime: "a asl 12",
  )
];

List<AreaModel> responseAreas = [
  AreaModel(
    id: "1",
    name: "BACKEND",
    tasklist: responseBackendTasks,
  ),
  AreaModel(
    id: "1",
    name: "MOBILE",
    tasklist: responseMobileTasks,
  ),
  AreaModel(
    id: "1",
    name: "IOT",
    tasklist: responseIotTasks,
  ),
  AreaModel(
    id: "1",
    name: "WEB",
    tasklist: responseWebTasks,
  ),
];

class GenericProvider {
  String getStaginURL() {
    return staggingUrl;
  }

  String getLocalUrl() {
    return localUrl;
  }

  List<AreaModel> getAreas() {
    return responseAreas;
  }
}
