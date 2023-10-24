import 'package:form_stckd/ui/views/text_reverse/text_reverse_view.form.dart';
import 'package:stacked/stacked.dart';

class TextReverseViewModel extends FormViewModel {
  String get reversedText =>
      hasReverseInput ? reverseInputValue!.split('').reversed.join('') : '---';

  void showValues() {
    print('hasReverseInput $hasReverseInput');
    print('formValueMap $formValueMap');
    print('fieldsValidationMessages $fieldsValidationMessages');
    print('hasAnyValidationMessage $hasAnyValidationMessage');
    print('hasReverseInputValidationMessage $hasReverseInputValidationMessage');
    print('hasError $hasError');
  }
}
