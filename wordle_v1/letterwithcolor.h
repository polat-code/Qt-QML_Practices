#ifndef LETTERWITHCOLOR_H
#define LETTERWITHCOLOR_H

#include <QObject>
#include <QString>

class LetterWithColor : public QObject
{
    Q_OBJECT
public:
    enum BACKGROUND_COLOR {
        YELLOW,
        GREEN,
        GRAY
    };

    explicit LetterWithColor(QObject *parent = nullptr);
    explicit LetterWithColor(const QString &letter, BACKGROUND_COLOR color); // Pass by value

    Q_ENUM(BACKGROUND_COLOR);
    Q_PROPERTY(BACKGROUND_COLOR color READ color WRITE setColor NOTIFY colorChanged)

    QString getLetter() const;
    void setLetter(const QString &value);

    Q_INVOKABLE BACKGROUND_COLOR getColor() const;
    void setColor(BACKGROUND_COLOR value);

private:
    QString letter;
    BACKGROUND_COLOR color;
};

#endif // LETTERWITHCOLOR_H
