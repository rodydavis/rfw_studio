import 'code.dart';

class RfwController extends CodeController {
  RfwController({super.text})
      : super(
          tokens: ['import', 'switch', 'set', 'event'],
          globals: ['args', 'data', 'state'],
          types: ['widget', 'false', 'true'],
        );
}
