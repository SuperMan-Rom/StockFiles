.class Lcom/android/contacts/common/list/ContactEntryListFragment$2;
.super Landroid/content/CursorLoader;
.source "ContactEntryListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/contacts/common/list/ContactEntryListFragment;
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/net/Uri;
    .param p4, "x2"    # [Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;
    .param p6, "x4"    # [Ljava/lang/String;
    .param p7, "x5"    # Ljava/lang/String;

    .prologue
    .line 357
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$2;, "Lcom/android/contacts/common/list/ContactEntryListFragment$2;"
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment$2;->this$0:Lcom/android/contacts/common/list/ContactEntryListFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLoadInBackground()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 361
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$2;, "Lcom/android/contacts/common/list/ContactEntryListFragment$2;"
    :try_start_0
    invoke-super {p0}, Landroid/content/CursorLoader;->onLoadInBackground()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-object v1

    .line 362
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ContactEntryListFragment"

    const-string v2, "RuntimeException while trying to query ContactsProvider."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onLoadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    .local p0, "this":Lcom/android/contacts/common/list/ContactEntryListFragment$2;, "Lcom/android/contacts/common/list/ContactEntryListFragment$2;"
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;->onLoadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
