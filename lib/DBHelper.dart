import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:developer';

class DBHelper {
  static final DBHelper _instance = DBHelper._(); // DBHelper의 싱글톤 객체 생성
  static Database? _database; // 데이터베이스 인스턴스를 저장하는 변수

  DBHelper._(); // DBHelper 생성자(private)

  factory DBHelper() => _instance; // DBHelper 인스턴스 반환 메소드

  // 데이터베이스 인스턴스를 가져오는 메소드
  Future<Database> get database async {
    if (_database != null) {
      // 인스턴스가 이미 존재한다면
      return _database!; // 저장된 데이터베이스 인스턴스를 반환
    }
    _database = await initDB(); // 데이터베이스 초기화
    return _database!; // 초기화된 데이터베이스 인스턴스 반환
  }

  // 데이터베이스 초기화 메소드
  Future<Database> initDB() async {
    final dbPath = await getDatabasesPath(); // 데이터베이스 경로 가져오기
    final path = join(dbPath, 'bucketlist.db'); // 데이터베이스 파일 경로 생성
    return await openDatabase(
      path, // 데이터베이스 파일 경로
      version: 1, // 데이터베이스 버전
      onCreate: (db, version) async {
        db.execute('CREATE TABLE typelists(' + 'type TEXT, ' + 'icon TEXT) ');
        // db.execute('CREATE TABLE bucketlist(' +
        //     'type TEXT, ' +
        //     'goal TEXT, ' +
        //     'memo TEXT) ');
      },
    );
  }

  // 데이터 추가 메소드
  Future<void> insertData(String name, String value) async {
    log("DBHelper insertData");
    final db = await database; // 데이터베이스 인스턴스 가져오기
    await db.insert(
      'typelists', // 데이터를 추가할 테이블 이름
      {
        'type': name,
        'icon': value,
      }, // 추가할 데이터
      conflictAlgorithm: ConflictAlgorithm.replace, // 중복 데이터 처리 방법 설정
    );
  }

  // 데이터 조회 메소드
  Future<List<Map<String, dynamic>>> selectData() async {
    log("DBHelper selectData");
    final db = await database; // 데이터베이스 인스턴스 가져오기
    return await db.query('typelists'); // 데이터베이스에서 모든 데이터 조회
  }

  // 데이터 수정 메소드
  Future<void> updateData(String type, String icon) async {
    final db = await database; // 데이터베이스 인스턴스 가져오기
    await db.update(
      'typelists', // 수정할 테이블 이름
      {
        'type': type,
        'icon': icon,
      }, // 수정할 데이터
      where: 'type = ?', // 수정할 데이터의 조건 설정
      whereArgs: [type], // 수정할 데이터의 조건 값
    );
  }

  // 데이터 삭제 메소드
  Future<void> deleteData(int id) async {
    final db = await database; // 데이터베이스 인스턴스 가져오기
    await db.delete(
      'typelists', // 삭제할 테이블 이름
      where: 'id = ?', // 삭제할 데이터의 조건 설정
      whereArgs: [id], // 삭제할 데이터의 조건 값
    );
  }
}
