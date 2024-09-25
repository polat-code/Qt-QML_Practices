#include "movie.h"

Movie::Movie(QObject *parent) : QObject(parent)
{

}

Movie::Movie(QString mainCharacter, QString title)
{
    setMainCharacter(mainCharacter);
    setTitle(title);
}

QString Movie::mainCharacter() const
{
    return m_mainCharacter;
}

QString Movie::title() const
{
    return m_title;
}

void Movie::setMainCharacter(QString mainCharacter)
{
    if (m_mainCharacter == mainCharacter)
        return;

    m_mainCharacter = mainCharacter;
    emit mainCharacterChanged(m_mainCharacter);
}

void Movie::setTitle(QString title)
{
    if (m_title == title)
        return;

    m_title = title;
    emit titleChanged(m_title);
}
