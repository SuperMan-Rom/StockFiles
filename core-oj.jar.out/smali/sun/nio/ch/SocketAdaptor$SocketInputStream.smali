.class Lsun/nio/ch/SocketAdaptor$SocketInputStream;
.super Lsun/nio/ch/ChannelInputStream;
.source "SocketAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/SocketAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketInputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lsun/nio/ch/SocketAdaptor;


# direct methods
.method private constructor <init>(Lsun/nio/ch/SocketAdaptor;)V
    .locals 1
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    .prologue
    .line 209
    iput-object p1, p0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    .line 210
    invoke-static {p1}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Lsun/nio/ch/SocketAdaptor;Lsun/nio/ch/SocketAdaptor$SocketInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lsun/nio/ch/SocketAdaptor;

    .prologue
    invoke-direct {p0, p1}, Lsun/nio/ch/SocketAdaptor$SocketInputStream;-><init>(Lsun/nio/ch/SocketAdaptor;)V

    return-void
.end method


# virtual methods
.method protected read(Ljava/nio/ByteBuffer;)I
    .locals 18
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->blockingLock()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 217
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isBlocking()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :catchall_0
    move-exception v3

    monitor-exit v17

    throw v3

    .line 219
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v3

    if-nez v3, :cond_1

    .line 220
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    monitor-exit v17

    return v3

    .line 223
    :cond_1
    const/4 v11, 0x0

    .line 224
    .local v11, "sk":Ljava/nio/channels/SelectionKey;
    const/4 v10, 0x0

    .line 225
    .local v10, "sel":Ljava/nio/channels/Selector;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 226
    const/4 v8, 0x0

    .line 227
    .local v8, "n":I
    invoke-static {}, Lsun/misc/IoTrace;->socketReadBegin()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 229
    .local v2, "traceContext":Ljava/lang/Object;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v8

    if-eqz v8, :cond_4

    .line 249
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v3}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v4}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v5}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v5

    if-lez v8, :cond_3

    move v6, v8

    :goto_0
    int-to-long v6, v6

    .line 249
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 253
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit v17

    .line 230
    return v8

    .line 250
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 231
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-static {v3}, Lsun/nio/ch/Util;->getTemporarySelector(Ljava/nio/channels/SelectableChannel;)Ljava/nio/channels/Selector;

    move-result-object v10

    .line 232
    .local v10, "sel":Ljava/nio/channels/Selector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v10, v4}, Lsun/nio/ch/SocketChannelImpl;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v11

    .line 233
    .local v11, "sk":Ljava/nio/channels/SelectionKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v3

    int-to-long v14, v3

    .line 235
    .local v14, "to":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_9

    .line 236
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 248
    .end local v10    # "sel":Ljava/nio/channels/Selector;
    .end local v11    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v14    # "to":J
    :catchall_1
    move-exception v3

    move-object/from16 v16, v3

    .line 249
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v3}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v4}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v5}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v5

    if-lez v8, :cond_f

    .end local v8    # "n":I
    :goto_1
    int-to-long v6, v8

    .line 249
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 251
    if-eqz v11, :cond_6

    .line 252
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 253
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 255
    :cond_7
    if-eqz v10, :cond_8

    .line 256
    invoke-static {v10}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V

    .line 248
    :cond_8
    throw v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 237
    .restart local v8    # "n":I
    .restart local v10    # "sel":Ljava/nio/channels/Selector;
    .restart local v11    # "sk":Ljava/nio/channels/SelectionKey;
    .restart local v14    # "to":J
    :cond_9
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 238
    .local v12, "st":J
    invoke-virtual {v10, v14, v15}, Ljava/nio/channels/Selector;->select(J)I

    move-result v9

    .line 239
    .local v9, "ns":I
    if-lez v9, :cond_e

    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lsun/nio/ch/SocketChannelImpl;->read(Ljava/nio/ByteBuffer;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v8

    if-eqz v8, :cond_e

    .line 249
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v3}, Lsun/nio/ch/SocketAdaptor;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 250
    move-object/from16 v0, p0

    iget-object v4, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-virtual {v4}, Lsun/nio/ch/SocketAdaptor;->getPort()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v5}, Lsun/nio/ch/SocketAdaptor;->-get1(Lsun/nio/ch/SocketAdaptor;)I

    move-result v5

    if-lez v8, :cond_d

    move v6, v8

    :goto_2
    int-to-long v6, v6

    .line 249
    invoke-static/range {v2 .. v7}, Lsun/misc/IoTrace;->socketReadEnd(Ljava/lang/Object;Ljava/net/InetAddress;IIJ)V

    .line 251
    if-eqz v11, :cond_a

    .line 252
    invoke-virtual {v11}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 253
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    invoke-virtual {v3}, Lsun/nio/ch/SocketChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/nio/ch/SocketAdaptor$SocketInputStream;->this$0:Lsun/nio/ch/SocketAdaptor;

    invoke-static {v3}, Lsun/nio/ch/SocketAdaptor;->-get0(Lsun/nio/ch/SocketAdaptor;)Lsun/nio/ch/SocketChannelImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/nio/ch/SocketChannelImpl;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 255
    :cond_b
    if-eqz v10, :cond_c

    .line 256
    invoke-static {v10}, Lsun/nio/ch/Util;->releaseTemporarySelector(Ljava/nio/channels/Selector;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_c
    monitor-exit v17

    .line 241
    return v8

    .line 250
    :cond_d
    const/4 v6, 0x0

    goto :goto_2

    .line 243
    :cond_e
    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    sub-long/2addr v14, v4

    .line 245
    const-wide/16 v4, 0x0

    cmp-long v3, v14, v4

    if-gtz v3, :cond_5

    .line 246
    new-instance v3, Ljava/net/SocketTimeoutException;

    invoke-direct {v3}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 250
    .end local v9    # "ns":I
    .end local v10    # "sel":Ljava/nio/channels/Selector;
    .end local v11    # "sk":Ljava/nio/channels/SelectionKey;
    .end local v12    # "st":J
    .end local v14    # "to":J
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1
.end method
