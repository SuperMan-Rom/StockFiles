.class Lcom/thoughtworks/xstream/io/xml/StaxDriver$2;
.super Lcom/thoughtworks/xstream/io/ReaderWrapper;
.source "StaxDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thoughtworks/xstream/io/xml/StaxDriver;->createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/io/xml/StaxDriver;

.field final synthetic val$stream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/io/xml/StaxDriver;Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "x0"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver$2;->this$0:Lcom/thoughtworks/xstream/io/xml/StaxDriver;

    iput-object p3, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver$2;->val$stream:Ljava/io/InputStream;

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/ReaderWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/ReaderWrapper;->close()V

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxDriver$2;->val$stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method
