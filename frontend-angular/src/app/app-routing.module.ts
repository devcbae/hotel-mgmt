import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AboutusComponent } from './aboutus/aboutus.component';
import { AnemityComponent } from './anemity/anemity.component';
import { BookingComponent } from './booking/booking.component';
import { DashboardComponent } from './dashboard/dashboard.component';

const routes: Routes = [
{path:'dashboard', component: DashboardComponent},
{path:'booking', component: BookingComponent},
{path:'anemity', component: AnemityComponent},
{path:'aboutus', component: AboutusComponent},
{path:'', redirectTo: '/dashboard', pathMatch:'full'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
