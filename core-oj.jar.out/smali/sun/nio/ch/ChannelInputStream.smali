.class public Lsun/nio/ch/ChannelInputStream;
.super Ljava/io/InputStream;
.source "ChannelInputStream.java"


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field protected final ch:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .locals 1
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 78
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 79
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    .line 80
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    .line 83
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 82
    return-void
.end method

.method public static read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    instance-of v3, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v3, :cond_1

    move-object v2, p0

    .line 58
    check-cast v2, Ljava/nio/channels/SelectableChannel;

    .line 59
    .local v2, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 60
    :try_start_0
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    .line 61
    .local v0, "bm":Z
    if-nez v0, :cond_0

    .line 62
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v0    # "bm":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 66
    .restart local v0    # "bm":Z
    :cond_0
    :try_start_1
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .local v1, "n":I
    monitor-exit v4

    .line 70
    return v1

    .line 73
    .end local v0    # "bm":Z
    .end local v1    # "n":I
    .end local v2    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_1
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    return v3
.end method


# virtual methods
.method public available()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    iget-object v3, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v3, v3, Ljava/nio/channels/SeekableByteChannel;

    if-eqz v3, :cond_1

    .line 123
    iget-object v2, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    check-cast v2, Ljava/nio/channels/SeekableByteChannel;

    .line 124
    .local v2, "sbc":Ljava/nio/channels/SeekableByteChannel;
    const-wide/16 v4, 0x0

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 125
    .local v0, "rem":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    const v3, 0x7fffffff

    :goto_0
    return v3

    :cond_0
    long-to-int v3, v0

    goto :goto_0

    .line 127
    .end local v0    # "rem":J
    .end local v2    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 130
    return-void
.end method

.method public declared-synchronized read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 87
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    .line 89
    :cond_0
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    invoke-virtual {p0, v1}, Lsun/nio/ch/ChannelInputStream;->read([B)I

    move-result v0

    .line 90
    .local v0, "n":I
    if-ne v0, v2, :cond_1

    .line 91
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .line 92
    :cond_1
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "n":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected read(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0, p1}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .locals 4
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 98
    if-ltz p2, :cond_0

    :try_start_0
    array-length v1, p1

    if-le p2, v1, :cond_1

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 98
    :cond_1
    if-ltz p3, :cond_0

    .line 99
    add-int v1, p2, p3

    :try_start_1
    array-length v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_0

    add-int v1, p2, p3

    if-ltz v1, :cond_0

    .line 101
    if-nez p3, :cond_2

    monitor-exit p0

    .line 102
    return v3

    .line 104
    :cond_2
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    if-ne v1, p1, :cond_3

    .line 105
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 107
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_0
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 108
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 110
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    .line 111
    invoke-virtual {p0, v0}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/ByteBuffer;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 106
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3
    :try_start_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method
