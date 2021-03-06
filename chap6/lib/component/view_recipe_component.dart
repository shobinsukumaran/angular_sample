library view_recipe_component;

import '../service/recipe.dart';
import 'package:angular/angular.dart';

@Component(
  selector: 'view-recipe',
  templateUrl: 'packages/angular_sample/component/view_recipe_component.html',
  cssUrl: 'packages/angular_sample/component/view_recipe_component.css',
  publishAs: 'cmp',
  map : const{
    'recipe-map' : '=>recipeMap'
  })
class ViewRecipeComponent {

  get cmp => this;

  Map<String, Recipe> recipeMap;

  String _recipeId;

  Recipe get recipe => recipeMap == null ? null : recipeMap[_recipeId];

  ViewRecipeComponent(RouteProvider routeProvider) {
    _recipeId = routeProvider.parameters['recipeId'];
  }
}