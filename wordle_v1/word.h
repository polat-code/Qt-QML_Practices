#ifndef WORD_H
#define WORD_H

#include <QObject>
#include <QVector>
#include "letterwithcolor.h"

class Word : public QObject
{
    Q_OBJECT
public:
    explicit Word(const QVector<LetterWithColor*> &word, QObject *parent = nullptr); // Use QVector of pointers and pass by const reference

    QVector<LetterWithColor*> getWord() const; // Return QVector of pointers

signals:

private:
    QVector<LetterWithColor*> word; // QVector of pointers to LetterWithColor
};

#endif // WORD_H
