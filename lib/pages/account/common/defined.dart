import 'package:form_field_validator/form_field_validator.dart';

class ValidForm {
  static final passwordValidator = MultiValidator([
    RequiredValidator(errorText: '必填项'),
    MinLengthValidator(6, errorText: '长度至少6位'),
    PatternValidator(r'[=.#?!@$%^&*-+_():,]{1,}',
        errorText: "必须有一个特殊字符=.#?!@\$%^&*-+_():,")
  ]);

  static final emailValidator = MultiValidator([
    RequiredValidator(errorText: '必填项'),
    EmailValidator(errorText: '请输入正确的邮箱地址'),
  ]);

  static final accountNameValidator = MultiValidator([
    RequiredValidator(errorText: '必填项'),
    MinLengthValidator(6, errorText: '长度至少6位'),
    PatternValidator(r'[0-9a-zA-Z]', errorText: '账号是大小写字母、数字')
  ]);
}
