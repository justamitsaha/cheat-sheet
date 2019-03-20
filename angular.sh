#install angular
npm install -g @angular/cli

#create new app
ng new custom-amit-app

#force any dependency injection which is misssing
npm i

#launch project
cd custom-amit-app
ng serve --o  #or
ng serve --open

#adding a component
ng generate componenet header

# any missing dependency copy the dependency name from log and install seperately
npm install -g @schematics/angular

#adding Bootstrap to Angular https://ng-bootstrap.github.io/#/home
npm install --save @ng-bootstrap/ng-bootstrap
# and add in module
import {NgbModule} from '@ng-bootstrap/ng-bootstrap';

@NgModule({
  ...
  imports: [NgbModule, ...],
  ...
})
export class YourAppModule {
}

#for angular material https://material.angular.io/
npm install --save @angular/material @angular/cdk @angular/animations
