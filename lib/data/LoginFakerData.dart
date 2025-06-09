import '../model/response/user/login/LoginResponse.dart';
import '../model/response/user/user/UserResponse.dart';

const loginResponseUser = LoginResponse(
  result: 1,
  token: '@@@user@@@',
  refreshToken: '@@@user@@@',
  loginType: 'normal',
  info: UserInfo(
    name: '王小明',
    account: 'user_123',
  ),
);

const loginResponseEngineer = LoginResponse(
  result: 1,
  token: '@@@engineer@@@',
  refreshToken: '@@@engineer@@@',
  loginType: 'engineer',
  info: UserInfo(
    name: '工程師張大華',
    account: 'dev_admin',
  ),
);

const userResponseUser = UserResponse(
  userId: 1001,
  account: 'user_123',
  headshot: null,
  name: '王小明',
  rolesName: '一般使用者',
  vendorId: null,
  vendorName: null,
  tel: '0912345678',
  city: '台北市',
  region: '大安區',
  vip: 0,
  addedTime: '2023-12-01T10:00:00Z',
);

const userResponseEngineer = UserResponse(
  userId: 2001,
  account: 'dev_admin',
  headshot: null,
  name: '工程師張大華',
  rolesName: '工程師',
  vendorId: 101,
  vendorName: '測試供應商',
  tel: '0987654321',
  city: '新北市',
  region: '板橋區',
  vip: 1,
  addedTime: '2023-11-15T08:30:00Z',
);

