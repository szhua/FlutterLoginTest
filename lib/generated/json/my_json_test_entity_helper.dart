import 'package:login_demo/models/my_json_test_entity.dart';

myJsonTestEntityFromJson(MyJsonTestEntity data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id']?.toInt();
	}
	if (json['specialName'] != null) {
		data.specialName = json['specialName']?.toString();
	}
	if (json['requireIf'] != null) {
		data.requireIf = json['requireIf']?.toString();
	}
	if (json['costContain'] != null) {
		data.costContain = json['costContain']?.toString();
	}
	if (json['maching'] != null) {
		data.maching = new List<MyJsonTestMaching>();
		(json['maching'] as List).forEach((v) {
			data.maching.add(new MyJsonTestMaching().fromJson(v));
		});
	}
	if (json['typeId'] != null) {
		data.typeId = json['typeId']?.toInt();
	}
	if (json['typeName'] != null) {
		data.typeName = json['typeName']?.toString();
	}
	if (json['resourceType'] != null) {
		data.resourceType = json['resourceType']?.toInt();
	}
	if (json['communityName'] != null) {
		data.communityName = json['communityName']?.toString();
	}
	if (json['img1url'] != null) {
		data.img1url = json['img1url']?.toString();
	}
	if (json['img2url'] != null) {
		data.img2url = json['img2url']?.toString();
	}
	if (json['img3url'] != null) {
		data.img3url = json['img3url']?.toString();
	}
	if (json['img4url'] != null) {
		data.img4url = json['img4url']?.toString();
	}
	if (json['img5url'] != null) {
		data.img5url = json['img5url']?.toString();
	}
	if (json['img6url'] != null) {
		data.img6url = json['img6url']?.toString();
	}
	if (json['img7url'] != null) {
		data.img7url = json['img7url']?.toString();
	}
	if (json['img8url'] != null) {
		data.img8url = json['img8url']?.toString();
	}
	if (json['img9url'] != null) {
		data.img9url = json['img9url']?.toString();
	}
	if (json['img10url'] != null) {
		data.img10url = json['img10url']?.toString();
	}
	if (json['img11url'] != null) {
		data.img11url = json['img11url']?.toString();
	}
	if (json['yardId'] != null) {
		data.yardId = json['yardId']?.toInt();
	}
	if (json['yardName'] != null) {
		data.yardName = json['yardName']?.toString();
	}
	if (json['numberId'] != null) {
		data.numberId = json['numberId']?.toInt();
	}
	if (json['numberName'] != null) {
		data.numberName = json['numberName']?.toString();
	}
	if (json['unitId'] != null) {
		data.unitId = json['unitId']?.toInt();
	}
	if (json['unitName'] != null) {
		data.unitName = json['unitName']?.toString();
	}
	if (json['roomId'] != null) {
		data.roomId = json['roomId']?.toInt();
	}
	if (json['roomName'] != null) {
		data.roomName = json['roomName']?.toString();
	}
	if (json['expectPrice'] != null) {
		data.expectPrice = json['expectPrice']?.toDouble();
	}
	if (json['expectPriceStr'] != null) {
		data.expectPriceStr = json['expectPriceStr']?.toString();
	}
	if (json['priceUnitId'] != null) {
		data.priceUnitId = json['priceUnitId']?.toInt();
	}
	if (json['otherNeed'] != null) {
		data.otherNeed = json['otherNeed']?.toString();
	}
	if (json['relUser'] != null) {
		data.relUser = json['relUser']?.toString();
	}
	if (json['mobile'] != null) {
		data.mobile = json['mobile']?.toString();
	}
	if (json['pid'] != null) {
		data.pid = json['pid']?.toInt();
	}
	if (json['payTypeName'] != null) {
		data.payTypeName = json['payTypeName']?.toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toInt();
	}
	if (json['lookHouseTime'] != null) {
		data.lookHouseTime = json['lookHouseTime']?.toString();
	}
	if (json['regionId'] != null) {
		data.regionId = json['regionId']?.toInt();
	}
	if (json['peopleCount'] != null) {
		data.peopleCount = json['peopleCount']?.toString();
	}
	if (json['liveDate'] != null) {
		data.liveDate = json['liveDate']?.toString();
	}
	if (json['address'] != null) {
		data.address = json['address']?.toString();
	}
	if (json['disRoomTypeId'] != null) {
		data.disRoomTypeId = json['disRoomTypeId']?.toInt();
	}
	if (json['disRoomTypeName'] != null) {
		data.disRoomTypeName = json['disRoomTypeName']?.toString();
	}
	if (json['areaName'] != null) {
		data.areaName = json['areaName']?.toString();
	}
	if (json['disTotalPrice'] != null) {
		data.disTotalPrice = json['disTotalPrice']?.toDouble();
	}
	if (json['disTotalPriceStr'] != null) {
		data.disTotalPriceStr = json['disTotalPriceStr']?.toString();
	}
	if (json['disUnitPrice'] != null) {
		data.disUnitPrice = json['disUnitPrice']?.toDouble();
	}
	if (json['disUnitPriceStr'] != null) {
		data.disUnitPriceStr = json['disUnitPriceStr']?.toString();
	}
	if (json['buildingName'] != null) {
		data.buildingName = json['buildingName']?.toString();
	}
	if (json['resourceNo'] != null) {
		data.resourceNo = json['resourceNo']?.toString();
	}
	if (json['usingId'] != null) {
		data.usingId = json['usingId']?.toInt();
	}
	if (json['usingName'] != null) {
		data.usingName = json['usingName']?.toString();
	}
	if (json['yearId'] != null) {
		data.yearId = json['yearId']?.toInt();
	}
	if (json['yearName'] != null) {
		data.yearName = json['yearName']?.toString();
	}
	if (json['tradeType'] != null) {
		data.tradeType = json['tradeType']?.toInt();
	}
	if (json['nowStatus'] != null) {
		data.nowStatus = json['nowStatus']?.toInt();
	}
	if (json['nowStatusName'] != null) {
		data.nowStatusName = json['nowStatusName']?.toString();
	}
	if (json['assortId'] != null) {
		data.assortId = json['assortId']?.toInt();
	}
	if (json['assortName'] != null) {
		data.assortName = json['assortName']?.toString();
	}
	if (json['electricalId'] != null) {
		data.electricalId = json['electricalId']?.toInt();
	}
	if (json['electricalName'] != null) {
		data.electricalName = json['electricalName']?.toString();
	}
	if (json['currFloor'] != null) {
		data.currFloor = json['currFloor']?.toString();
	}
	if (json['totalFloor'] != null) {
		data.totalFloor = json['totalFloor']?.toString();
	}
	if (json['forwardId'] != null) {
		data.forwardId = json['forwardId']?.toInt();
	}
	if (json['forwardName'] != null) {
		data.forwardName = json['forwardName']?.toString();
	}
	if (json['fitId'] != null) {
		data.fitId = json['fitId']?.toInt();
	}
	if (json['fitName'] != null) {
		data.fitName = json['fitName']?.toString();
	}
	if (json['furnitureId'] != null) {
		data.furnitureId = json['furnitureId']?.toInt();
	}
	if (json['furnitureName'] != null) {
		data.furnitureName = json['furnitureName']?.toString();
	}
	if (json['rightId'] != null) {
		data.rightId = json['rightId']?.toInt();
	}
	if (json['rightName'] != null) {
		data.rightName = json['rightName']?.toString();
	}
	if (json['reouseStatus'] != null) {
		data.reouseStatus = json['reouseStatus']?.toInt();
	}
	if (json['releaseStatus'] != null) {
		data.releaseStatus = json['releaseStatus']?.toInt();
	}
	if (json['status'] != null) {
		data.status = json['status']?.toInt();
	}
	if (json['isTj'] != null) {
		data.isTj = json['isTj']?.toInt();
	}
	if (json['isHot'] != null) {
		data.isHot = json['isHot']?.toInt();
	}
	if (json['isNew'] != null) {
		data.isNew = json['isNew']?.toInt();
	}
	if (json['addTime'] != null) {
		data.addTime = json['addTime']?.toString();
	}
	if (json['addUser'] != null) {
		data.addUser = json['addUser']?.toInt();
	}
	if (json['infoType'] != null) {
		data.infoType = json['infoType']?.toInt();
	}
	if (json['infoType2'] != null) {
		data.infoType2 = json['infoType2']?.toInt();
	}
	if (json['infoType3'] != null) {
		data.infoType3 = json['infoType3']?.toInt();
	}
	if (json['resourceContent'] != null) {
		data.resourceContent = json['resourceContent']?.toString();
	}
	return data;
}

Map<String, dynamic> myJsonTestEntityToJson(MyJsonTestEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['specialName'] = entity.specialName;
	data['requireIf'] = entity.requireIf;
	data['costContain'] = entity.costContain;
	if (entity.maching != null) {
		data['maching'] =  entity.maching.map((v) => v.toJson()).toList();
	}
	data['typeId'] = entity.typeId;
	data['typeName'] = entity.typeName;
	data['resourceType'] = entity.resourceType;
	data['communityName'] = entity.communityName;
	data['img1url'] = entity.img1url;
	data['img2url'] = entity.img2url;
	data['img3url'] = entity.img3url;
	data['img4url'] = entity.img4url;
	data['img5url'] = entity.img5url;
	data['img6url'] = entity.img6url;
	data['img7url'] = entity.img7url;
	data['img8url'] = entity.img8url;
	data['img9url'] = entity.img9url;
	data['img10url'] = entity.img10url;
	data['img11url'] = entity.img11url;
	data['yardId'] = entity.yardId;
	data['yardName'] = entity.yardName;
	data['numberId'] = entity.numberId;
	data['numberName'] = entity.numberName;
	data['unitId'] = entity.unitId;
	data['unitName'] = entity.unitName;
	data['roomId'] = entity.roomId;
	data['roomName'] = entity.roomName;
	data['expectPrice'] = entity.expectPrice;
	data['expectPriceStr'] = entity.expectPriceStr;
	data['priceUnitId'] = entity.priceUnitId;
	data['otherNeed'] = entity.otherNeed;
	data['relUser'] = entity.relUser;
	data['mobile'] = entity.mobile;
	data['pid'] = entity.pid;
	data['payTypeName'] = entity.payTypeName;
	data['cid'] = entity.cid;
	data['lookHouseTime'] = entity.lookHouseTime;
	data['regionId'] = entity.regionId;
	data['peopleCount'] = entity.peopleCount;
	data['liveDate'] = entity.liveDate;
	data['address'] = entity.address;
	data['disRoomTypeId'] = entity.disRoomTypeId;
	data['disRoomTypeName'] = entity.disRoomTypeName;
	data['areaName'] = entity.areaName;
	data['disTotalPrice'] = entity.disTotalPrice;
	data['disTotalPriceStr'] = entity.disTotalPriceStr;
	data['disUnitPrice'] = entity.disUnitPrice;
	data['disUnitPriceStr'] = entity.disUnitPriceStr;
	data['buildingName'] = entity.buildingName;
	data['resourceNo'] = entity.resourceNo;
	data['usingId'] = entity.usingId;
	data['usingName'] = entity.usingName;
	data['yearId'] = entity.yearId;
	data['yearName'] = entity.yearName;
	data['tradeType'] = entity.tradeType;
	data['nowStatus'] = entity.nowStatus;
	data['nowStatusName'] = entity.nowStatusName;
	data['assortId'] = entity.assortId;
	data['assortName'] = entity.assortName;
	data['electricalId'] = entity.electricalId;
	data['electricalName'] = entity.electricalName;
	data['currFloor'] = entity.currFloor;
	data['totalFloor'] = entity.totalFloor;
	data['forwardId'] = entity.forwardId;
	data['forwardName'] = entity.forwardName;
	data['fitId'] = entity.fitId;
	data['fitName'] = entity.fitName;
	data['furnitureId'] = entity.furnitureId;
	data['furnitureName'] = entity.furnitureName;
	data['rightId'] = entity.rightId;
	data['rightName'] = entity.rightName;
	data['reouseStatus'] = entity.reouseStatus;
	data['releaseStatus'] = entity.releaseStatus;
	data['status'] = entity.status;
	data['isTj'] = entity.isTj;
	data['isHot'] = entity.isHot;
	data['isNew'] = entity.isNew;
	data['addTime'] = entity.addTime;
	data['addUser'] = entity.addUser;
	data['infoType'] = entity.infoType;
	data['infoType2'] = entity.infoType2;
	data['infoType3'] = entity.infoType3;
	data['resourceContent'] = entity.resourceContent;
	return data;
}

myJsonTestMachingFromJson(MyJsonTestMaching data, Map<String, dynamic> json) {
	if (json['name0'] != null) {
		data.name0 = json['name0']?.toString();
	}
	if (json['imgurl0'] != null) {
		data.imgurl0 = json['imgurl0']?.toString();
	}
	return data;
}

Map<String, dynamic> myJsonTestMachingToJson(MyJsonTestMaching entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name0'] = entity.name0;
	data['imgurl0'] = entity.imgurl0;
	return data;
}