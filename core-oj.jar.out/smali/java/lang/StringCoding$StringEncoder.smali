.class Ljava/lang/StringCoding$StringEncoder;
.super Ljava/lang/Object;
.source "StringCoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/StringCoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringEncoder"
.end annotation


# instance fields
.field private ce:Ljava/nio/charset/CharsetEncoder;

.field private cs:Ljava/nio/charset/Charset;

.field private final isTrusted:Z

.field private final requestedCharsetName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 2
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p2, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    .line 293
    iput-object p1, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    .line 294
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 295
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 294
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    .line 296
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 294
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    .line 297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    .line 291
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/lang/StringCoding$StringEncoder;)V
    .locals 0
    .param p1, "cs"    # Ljava/nio/charset/Charset;
    .param p2, "rcn"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/StringCoding$StringEncoder;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method charsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lsun/nio/cs/HistoricallyNamedCharset;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    check-cast v0, Lsun/nio/cs/HistoricallyNamedCharset;

    invoke-interface {v0}, Lsun/nio/cs/HistoricallyNamedCharset;->historicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method encode([CII)[B
    .locals 10
    .param p1, "ca"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v7, 0x0

    .line 311
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v6}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v6

    invoke-static {p3, v6}, Ljava/lang/StringCoding;->-wrap2(IF)I

    move-result v4

    .line 312
    .local v4, "en":I
    if-nez p3, :cond_0

    .line 313
    new-array v6, v7, [B

    return-object v6

    .line 314
    :cond_0
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    instance-of v6, v6, Lsun/nio/cs/ArrayEncoder;

    if-eqz v6, :cond_1

    .line 315
    new-array v0, v4, [B

    .line 316
    .local v0, "ba":[B
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    check-cast v6, Lsun/nio/cs/ArrayEncoder;

    invoke-interface {v6, p1, p2, p3, v0}, Lsun/nio/cs/ArrayEncoder;->encode([CII[B)I

    move-result v2

    .line 317
    .local v2, "blen":I
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v7, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    invoke-static {v0, v2, v6, v7}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B

    move-result-object v6

    return-object v6

    .line 319
    .end local v0    # "ba":[B
    .end local v2    # "blen":I
    :cond_1
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v6}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 320
    invoke-static {p1, p2, p3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 325
    .local v3, "cb":Ljava/nio/CharBuffer;
    :try_start_0
    iget-object v6, p0, Ljava/lang/StringCoding$StringEncoder;->ce:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 326
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v7

    iget-object v8, p0, Ljava/lang/StringCoding$StringEncoder;->cs:Ljava/nio/charset/Charset;

    iget-boolean v9, p0, Ljava/lang/StringCoding$StringEncoder;->isTrusted:Z

    invoke-static {v6, v7, v8, v9}, Ljava/lang/StringCoding;->-wrap0([BILjava/nio/charset/Charset;Z)[B
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 327
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v5

    .line 330
    .local v5, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v6, Ljava/lang/Error;

    invoke-direct {v6, v5}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method final requestedCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Ljava/lang/StringCoding$StringEncoder;->requestedCharsetName:Ljava/lang/String;

    return-object v0
.end method
