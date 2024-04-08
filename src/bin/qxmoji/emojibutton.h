#ifndef QXMOJI_EMOJIBUTTON_H
#define QXMOJI_EMOJIBUTTON_H

#include "decl.h"

#include <QLabel>

C_CLASS_DECL(Emoji);
class QEvent;
class QMouseEvent;

class EmojiButton: public QLabel
{
	Q_OBJECT

	const Emoji *emoji;
	
    public:
	EmojiButton(QWidget *parent, const Emoji *emoji);

    signals:
	void clicked(const Emoji *emoji);

    protected:
	void enterEvent(QEvent *ev);
	void leaveEvent(QEvent *ev);
	void mousePressEvent(QMouseEvent *ev);
};

#endif
