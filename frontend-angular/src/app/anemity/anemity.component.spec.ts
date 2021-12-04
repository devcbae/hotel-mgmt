import { ComponentFixture, TestBed } from '@angular/core/testing';

import { AnemityComponent } from './anemity.component';

describe('AnemityComponent', () => {
  let component: AnemityComponent;
  let fixture: ComponentFixture<AnemityComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ AnemityComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(AnemityComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
