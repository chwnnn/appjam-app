import 'dart:io';

const ACCESS_TOKEN_KEY = 'ACCESS_TOKEN';
const REFRESH_TOKEN_KEY = 'REFRESH_TOKEN';

// localhost
final emulatorIp = '10.0.2.2:3000';
final simulatorIp = '172.16.20.133:3000';

final ip = Platform.isIOS ? simulatorIp : emulatorIp;