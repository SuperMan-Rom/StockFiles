.class public abstract Ljava/util/jar/Pack200;
.super Ljava/lang/Object;
.source "Pack200.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/Pack200$Packer;,
        Ljava/util/jar/Pack200$Unpacker;
    }
.end annotation


# static fields
.field private static final PACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Packer"

.field private static final UNPACK_PROVIDER:Ljava/lang/String; = "java.util.jar.Pack200.Unpacker"

.field private static packerImpl:Ljava/lang/Class;

.field private static unpackerImpl:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized newInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p0, "prop"    # Ljava/lang/String;

    .prologue
    const-class v7, Ljava/util/jar/Pack200;

    monitor-enter v7

    .line 733
    :try_start_0
    const-string/jumbo v5, "(unknown)"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    .local v5, "implName":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v6, "java.util.jar.Pack200.Packer"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v4, Ljava/util/jar/Pack200;->packerImpl:Ljava/lang/Class;

    .line 736
    .local v4, "impl":Ljava/lang/Class;
    :goto_0
    if-nez v4, :cond_0

    .line 739
    new-instance v6, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v8, ""

    invoke-direct {v6, p0, v8}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 740
    if-eqz v5, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 750
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    monitor-exit v7

    return-object v6

    .line 735
    .end local v4    # "impl":Ljava/lang/Class;
    :cond_1
    :try_start_2
    sget-object v4, Ljava/util/jar/Pack200;->unpackerImpl:Ljava/lang/Class;

    .restart local v4    # "impl":Ljava/lang/Class;
    goto :goto_0

    .line 741
    :cond_2
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_1

    .line 759
    .end local v4    # "impl":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 760
    .local v2, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v6, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot access class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 761
    const-string/jumbo v9, ":\ncheck property "

    .line 760
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 762
    const-string/jumbo v9, " in your properties file."

    .line 760
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    .end local v5    # "implName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 755
    .restart local v5    # "implName":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 756
    .local v3, "e":Ljava/lang/InstantiationException;
    :try_start_4
    new-instance v6, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not instantiate: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 757
    const-string/jumbo v9, ":\ncheck property "

    .line 756
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 758
    const-string/jumbo v9, " in your properties file."

    .line 756
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 751
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 752
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/Error;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Class not found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 753
    const-string/jumbo v9, ":\ncheck property "

    .line 752
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 754
    const-string/jumbo v9, " in your properties file."

    .line 752
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static declared-synchronized newPacker()Ljava/util/jar/Pack200$Packer;
    .locals 2

    .prologue
    const-class v1, Ljava/util/jar/Pack200;

    monitor-enter v1

    .line 134
    :try_start_0
    const-string/jumbo v0, "java.util.jar.Pack200.Packer"

    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Packer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static newUnpacker()Ljava/util/jar/Pack200$Unpacker;
    .locals 1

    .prologue
    .line 160
    const-string/jumbo v0, "java.util.jar.Pack200.Unpacker"

    invoke-static {v0}, Ljava/util/jar/Pack200;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Pack200$Unpacker;

    return-object v0
.end method
