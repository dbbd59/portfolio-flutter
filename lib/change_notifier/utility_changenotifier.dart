// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';

// 📦 Package imports:
import 'package:injectable/injectable.dart';

// 🌎 Project imports:
import 'package:portfolio_flutter/repository/utility/i_utility_repository.dart';

// 🌎 Project imports:

@Singleton()
class UtilityChangeNotifier extends ChangeNotifier {
  final IUtilityRepository _utilityRepository;

  UtilityChangeNotifier(this._utilityRepository);

  set showFps(bool value) {
    _utilityRepository.showFps = value;
    notifyListeners();
  }

  bool get showFps {
    return _utilityRepository.showFps;
  }
}
