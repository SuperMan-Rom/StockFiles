.class Lcom/android/incallui/sns/SecLinkedInHelper$1;
.super Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;
.source "SecLinkedInHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/sns/SecLinkedInHelper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/sns/SecLinkedInHelper;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "bSuccess"    # Z
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "resultCode"    # I
    .param p5, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reqId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "description="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bSuccess="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    if-nez p2, :cond_1

    .line 107
    const-string v4, "failed to get image from Linkedin"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 114
    if-eqz p3, :cond_0

    .line 117
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v4

    iget v4, v4, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->reqId:I

    if-eq v4, p1, :cond_3

    .line 120
    :cond_2
    const-string v4, "reqId is not matched"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_3
    const/4 v3, 0x0

    .line 125
    .local v3, "linkedinPhoto":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 127
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$400(Lcom/android/incallui/sns/SecLinkedInHelper;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 128
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 132
    if-eqz v2, :cond_4

    .line 134
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :cond_4
    :goto_1
    if-eqz v3, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v3, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-boolean v6, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLinkedin:Z

    .line 146
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v4

    iget-object v4, v4, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-boolean v6, v4, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isPersonalPhotoAvailable:Z

    .line 147
    const-string v4, "set Linkedin photo"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    .line 149
    .local v0, "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    if-eqz v0, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/incallui/sns/SecLinkedInHelper$1;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    # getter for: Lcom/android/incallui/sns/SecLinkedInHelper;->mCookie:Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;
    invoke-static {v4}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$500(Lcom/android/incallui/sns/SecLinkedInHelper;)Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallCardPresenter;->updatePhotoForLinkedin(Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "cardPresenter":Lcom/android/incallui/CallCardPresenter;
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Unable to close input stream."

    invoke-static {p0, v4, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    const-string v4, "failed to create drawable from URI"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    if-eqz v2, :cond_4

    .line 134
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 135
    :catch_2
    move-exception v1

    .line 136
    const-string v4, "Unable to close input stream."

    invoke-static {p0, v4, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_5

    .line 134
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 137
    :cond_5
    :goto_2
    throw v4

    .line 135
    :catch_3
    move-exception v1

    .line 136
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "Unable to close input stream."

    invoke-static {p0, v5, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method
