.class Lsun/security/ssl/AppOutputStream;
.super Ljava/io/OutputStream;
.source "AppOutputStream.java"


# instance fields
.field private c:Lsun/security/ssl/SSLSocketImpl;

.field private final oneByte:[B

.field r:Lsun/security/ssl/OutputRecord;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSocketImpl;)V
    .locals 2
    .param p1, "conn"    # Lsun/security/ssl/SSLSocketImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lsun/security/ssl/AppOutputStream;->oneByte:[B

    .line 52
    new-instance v0, Lsun/security/ssl/OutputRecord;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lsun/security/ssl/OutputRecord;-><init>(B)V

    iput-object v0, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    .line 53
    iput-object p1, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    .line 51
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v0}, Lsun/security/ssl/SSLSocketImpl;->close()V

    .line 142
    return-void
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 135
    :try_start_0
    iget-object v0, p0, Lsun/security/ssl/AppOutputStream;->oneByte:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 136
    iget-object v0, p0, Lsun/security/ssl/AppOutputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lsun/security/ssl/AppOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 134
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    monitor-enter p0

    .line 61
    if-nez p1, :cond_0

    .line 62
    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 63
    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    .line 64
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 63
    :cond_2
    array-length v4, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v4, p2

    if-gt p3, v4, :cond_1

    .line 65
    if-nez p3, :cond_3

    monitor-exit p0

    .line 66
    return-void

    .line 70
    :cond_3
    :try_start_2
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    const/4 v3, 0x1

    .line 94
    .local v3, "isFirstRecordOfThePayload":Z
    :cond_4
    const/4 v1, 0x0

    .line 96
    .local v1, "holdRecord":Z
    if-eqz v3, :cond_8

    :try_start_3
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLSocketImpl;->needToSplitPayload()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v4}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 105
    .local v2, "howmuch":I
    if-eq p3, v6, :cond_5

    if-ne v2, v6, :cond_5

    .line 106
    const/4 v1, 0x1

    .line 112
    :cond_5
    :goto_0
    if-eqz v3, :cond_6

    if-eqz v2, :cond_6

    .line 113
    const/4 v3, 0x0

    .line 117
    :cond_6
    if-lez v2, :cond_7

    .line 118
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v4, p1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 119
    add-int/2addr p2, v2

    .line 120
    sub-int/2addr p3, v2

    .line 122
    :cond_7
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    iget-object v5, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v4, v5, v1}, Lsun/security/ssl/SSLSocketImpl;->writeRecord(Lsun/security/ssl/OutputRecord;Z)V

    .line 123
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v4}, Lsun/security/ssl/SSLSocketImpl;->checkWrite()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    if-gtz p3, :cond_4

    .end local v2    # "howmuch":I
    :goto_1
    monitor-exit p0

    .line 60
    return-void

    .line 109
    :cond_8
    :try_start_4
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->r:Lsun/security/ssl/OutputRecord;

    invoke-virtual {v4}, Lsun/security/ssl/OutputRecord;->availableDataBytes()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    .restart local v2    # "howmuch":I
    goto :goto_0

    .line 125
    .end local v2    # "howmuch":I
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v4, p0, Lsun/security/ssl/AppOutputStream;->c:Lsun/security/ssl/SSLSocketImpl;

    invoke-virtual {v4, v0}, Lsun/security/ssl/SSLSocketImpl;->handleException(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method
