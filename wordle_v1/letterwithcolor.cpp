#include "letterwithcolor.h"

LetterWithColor::LetterWithColor(const QString &letter, LetterWithColor::BACKGROUND_COLOR color)
    : letter(letter), color(color) // Initialize using initializer list
{
}

QString LetterWithColor::getLetter() const
{
    return letter;
}

void LetterWithColor::setLetter(const QString &value)
{
    letter = value;
}

LetterWithColor::BACKGROUND_COLOR LetterWithColor::getColor() const
{
    return color;
}

void LetterWithColor::setColor(LetterWithColor::BACKGROUND_COLOR value)
{
    color = value;
}
