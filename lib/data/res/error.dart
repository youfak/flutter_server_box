enum ErrFrom {
  unknown,
  apt,
  docker,
  sftp,
  ssh,
}

abstract class Err<T> {
  final ErrFrom from;
  final T type;
  final String? message;

  Err({required this.from, required this.type, this.message});
}

enum DockerErrType {
  unknown,
  noClient,
  notInstalled,
  invalidVersion,
  cmdNoPrefix
}

class DockerErr extends Err<DockerErrType> {
  DockerErr({required DockerErrType type, String? message})
      : super(from: ErrFrom.docker, type: type, message: message);
}
