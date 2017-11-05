//
//  DZ 20- Obj_Skut_IBOtlets.h
//  DZ 20 - Obj_Skut_Outlets
//
//  Created by mac on 22.10.17.
//  Copyright © 2017 Dima Zgera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DZ_20__Obj_Skut_IBOtlets : NSObject

@end

На самом деле урок очень простой, единственно что я рекомендую повторить прошлое домашнее задание, но используя аутлеты. Итак:

ВСЕ ЗАДАНИЯ ДОЛЖНЫ БЫТЬ БЫПОЛНЕНЫ ТОЛЬКО ИСПОЛЬЗУЯ АУТЛЕТЫ.
МЕТОД subviews НЕ ИСПОЛЬЗУЙТЕ, ВМЕСТО НЕГО ИСПОЛЬЗУЙТЕ АУТЛЕТ КОЛЛЕКЦИИ

Ученик

1. В цикле создавайте квадратные UIView с черным фоном и расположите их в виде шахматной доски
2. доска должна иметь столько клеток, как и настоящая шахматная

Студент

3. Доска должна быть вписана в максимально возможный квадрат, т.е. либо бока, либо верх или низ должны касаться границ экрана
4. Применяя соответствующие маски сделайте так, чтобы когда устройство меняет ориентацию, то все клетки растягивались соответственно и ничего не вылетало за пределы экрана.

Мастер
5. При повороте устройства все черные клетки должны менять цвет :)
6. Сделайте так, чтобы доска при поворотах всегда строго находилась по центру

Супермен
8. Поставьте белые и красные шашки (квадратные вьюхи) так как они стоят на доске. Они должны быть сабвьюхами главной вьюхи (у них и у клеток один супервью)
9. После каждого переворота шашки должны быть перетасованы используя соответствующие методы иерархии UIView

