#ifndef LOCALVARIABLE_H
#define LOCALVARIABLE_H

#include "container.h"
#include "declaration.h"
#include "type.h"

typedef struct Node Node;
typedef struct FunctionDefinition FunctionDefinition;

typedef enum {
  VARIABLE_LOCAL,      // ローカル変数
  VARIABLE_GLOBAL,     // グローバル変数
  VARIABLE_ENUMERATOR, // 列挙子
  VARIABLE_MEMBER      // メンバ変数
} VariableKind;

typedef struct Variable Variable;
struct Variable {
  const String *name;  //名前
  StorageKind storage; //記憶クラス
  Type *type;          //型
  VariableKind kind;   //変数の種類
  int offset; // RBPからのオフセット、ローカル変数でのみ使用
  int id; // codegen.cで生成して付与する。ローカルのstatic変数でのみ使用する
  Node *initialization; // 初期化式、グローバル変数でのみ使用
  FunctionDefinition *function; //関数型のときのみ使用する
};

#endif
