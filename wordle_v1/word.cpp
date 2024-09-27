#include "word.h"
#include "letterwithcolor.h"

Word::Word(const QVector<LetterWithColor*> &word, QObject *parent)
    : QObject(parent), word(word) // Initialize QVector using the initializer list
{
}

QVector<LetterWithColor*> Word::getWord() const
{
    return word; // Return the QVector of pointers
}
