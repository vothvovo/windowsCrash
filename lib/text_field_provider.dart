import 'package:hooks_riverpod/hooks_riverpod.dart';

final textFieldProvider =
    StateNotifierProvider<TextFieldNotifier, String>((ref) {
  return TextFieldNotifier();
});

class TextFieldNotifier extends StateNotifier<String> {
  TextFieldNotifier() : super("");

  // // add a String to the command property of a shortcutmodel (which is a string)
  // void addStringToCommand(int index, String stringToAdd) {
  //   ShortcutModel newModel = state.shortcutModelList[index];
  //   // TODO we need a real textfield where you can delete stuff with backspace
  //   newModel = newModel.copyWith(command: stringToAdd);
  //   replaceShortcut(newModel, index);
  // }

  void clear() {
    state = "";
  }

  void replaceText(String text) {
    state = text;
  }

  // /// clear the triggerlist of the ShortcutModel at the given index
  // void clearTriggerList(int index) {
  //   ShortcutModel newModel = state.shortcutModelList[index];
  //   newModel = newModel.copyWith(triggerList: []);
  //   replaceShortcut(newModel, index);
  // }

  // /// add a logicalkey to the triggerlist of the shortcutModel at the given index
  // void addLogicalKeyToTriggerList(LogicalKeyboardKey keyToAdd, int index) {
  //   ShortcutModel newModel = state.shortcutModelList[index];
  //   newModel = newModel.copyWith(
  //     triggerList: [...state.shortcutModelList[index].triggerList, keyToAdd],
  //   );
  //   replaceShortcut(newModel, index);
  // }

  // /// add to the list of shortcutModels, basically the state
  // void addShortcut(ShortcutModel newModel) {
  //   state = state
  //       .copyWith(shortcutModelList: [...state.shortcutModelList, newModel]);
  // }

  // /// replace in the list of shortcutModels, basically the state
  // void replaceShortcut(ShortcutModel newModel, int index) {
  //   state = state.copyWith(
  //     shortcutModelList: List.unmodifiable(
  //       state.shortcutModelList.toList()..replaceAt(index, newModel),
  //     ),
  //   );
  // }

  // /// write the model to the isar database
  // /// this will be called after losing focus from rebinding a shortcut
  // void writeModelToDatabase() {
  //   // TODO curretly we just rewrite the entire list. It would be more performant if we just overwrote the parts that need to be overwritten. It is currently still performant enough tho.
  //   ShortcutListRepository().writeShortcutModelList(
  //     read(currentlySelectedProgramProvider.notifier).getNameOfCurrentProgram(),
  //     state.shortcutModelList,
  //   );
  // }

  // // this is also where we read from the database
  // // make sure to call this whenever currentprogram changes.
  // // this needs to be a future because we want to await its creation
  // Future<void> createShortcutList() async {
  //   // this will not be called when the current program changes, but this is called within the sidebare so its basically the same as making a provider sibling dependency
  //   final currentProgramName = read(currentlySelectedProgramProvider.notifier)
  //       .getNameOfCurrentProgram();

  //   // make a temporary list that will get filled up one way or another during the incoming process
  //   List<ShortcutModel> tempShortcutModelList = [];

  //   try {
  //     // figma just got clicked, there might be 2 configs saved for figma
  //     // make an isar query to check how many hits we get for 'figma' (currentprogram)

  //     // get the isar collection
  //     final isarShortcutCollection = isar.isarShorcutListCollections;

  //     // make a query for the current program
  //     final queryResult = await isarShortcutCollection
  //         .filter()
  //         .appNameEqualTo(currentProgramName)
  //         .findAll();

  //     // log the results for debug
  //     queryResult.join().log(2, 'hits for collection $currentProgramName');

  //     // TODO currently if there are multiple configs, we just get the first one, a real solution is needed, like giving the user a choice or deleting the other ones for redundancy
  //     // read from the database
  //     tempShortcutModelList = await ShortcutListRepository()
  //         .readShortcutModelList(queryResult.first.id);

  //     // log the results
  //     'read from database success'.log(2);
  //     //
  //   } catch (e) {
  //     // we get here whenever reading failed
  //     // we get here when we could not find a model the isar database. The models are created once the user clicks on the program. Currently we add our models at the top and have the add button as an additon. That means the only case when a model is not found is when the user clicked the add button
  //     // but we also get here when we click figma and there is no database model yet.
  //     // That means we can either add all the models we have instantly to the local user database
  //     // or we can make a switch here for all the models.
  //     // so basically, if there is a model from us like like currentprogramName == 'figma', we use that.
  //     // otherwise, blank slate
  //     'there was an error reading from database, probably could not find a default config: $e'
  //         .log(2);

  //     // get the default config if there is one, otherwise make a blank slate

  //     // TODO when adding programs, this list needs to be extended
  //     tempShortcutModelList = currentProgramName == 'figma'
  //         ? await FigmaShortcutVisualizationRepository()
  //             .getListofShortcutObjects()
  //         //TODO when we provide an empty config,
  //         : [
  //             for (int i = 0; i < 100; i++)
  //               const ShortcutModel(
  //                 triggerList: [],
  //                 command: 'click to replace',
  //                 category: '',
  //               ),
  //           ];

  //     // create the config file in the database
  //     ShortcutListRepository().writeShortcutModelList(
  //       currentProgramName,
  //       tempShortcutModelList,
  //     );
  //   }

  //   // after the try catch we will have a tempShortcutModelList with contents in it.
  //   // write that to the state
  //   state = state.copyWith(shortcutModelList: tempShortcutModelList);
  // }
}
