#ifndef TOKENIZE_H
#define TOKENIZE_H

#include "container.h"

typedef enum {
  TOKEN_RESERVED,   //記号
  TOKEN_IDENTIFIER, //識別子
  TOKEN_NUMBER,     //整数
  TOKEN_CHAR,       //文字
  TOKEN_STRING,     //文字列
  TOKEN_EOF         //入力の終端
} TokenKind;

typedef struct Token Token;
struct Token {
  TokenKind kind;       //トークンの種類
  Token *next;          //次の入力トークン
  int value;            // kindがTOKEN_NUMBERの場合、その値
  const String *string; //トークン文字列
};

Token *tokenize(const char *p);

#endif
