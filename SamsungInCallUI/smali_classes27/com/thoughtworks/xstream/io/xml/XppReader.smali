.class public Lcom/thoughtworks/xstream/io/xml/XppReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
.source "XppReader.java"


# instance fields
.field private final parser:Lorg/xmlpull/v1/XmlPullParser;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 70
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XppReader;-><init>(Ljava/io/Reader;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 3
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 78
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 81
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    .line 82
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 83
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->moveDown()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/XppReader;-><init>(Ljava/io/Reader;Lorg/xmlpull/v1/XmlPullParser;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/xmlpull/v1/XmlPullParser;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 55
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 56
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 57
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->moveDown()V

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .prologue
    .line 155
    const-string v0, "line number"

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 5

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "exception":Ljava/lang/Exception;
    :try_start_0
    const-string v2, "org.xmlpull.mxp1.MXParser"

    const/4 v3, 0x1

    const-class v4, Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InstantiationException;
    move-object v1, v0

    .line 104
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :goto_0
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Cannot create Xpp3 parser instance."

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 99
    :catch_1
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/IllegalAccessException;
    move-object v1, v0

    .line 103
    goto :goto_0

    .line 101
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    move-object v1, v0

    goto :goto_0
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pullElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pullNextEvent()I
    .locals 2

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 121
    :pswitch_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 112
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 115
    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 117
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 119
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected pullText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
