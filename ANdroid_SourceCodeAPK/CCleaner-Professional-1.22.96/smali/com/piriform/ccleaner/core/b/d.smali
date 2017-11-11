.class final Lcom/piriform/ccleaner/core/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/piriform/ccleaner/core/data/c;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    .line 1063
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    .line 22
    :goto_0
    if-eqz v2, :cond_1

    .line 23
    new-instance v0, Lcom/piriform/ccleaner/core/data/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/c;-><init>()V

    .line 46
    :goto_1
    return-object v0

    :cond_0
    move v2, v0

    .line 1063
    goto :goto_0

    .line 26
    :cond_1
    invoke-static {p0, p1}, Lcom/piriform/ccleaner/core/b/d;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1067
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move v0, v1

    .line 27
    :cond_3
    if-eqz v0, :cond_5

    .line 28
    if-eqz v2, :cond_4

    .line 29
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_4
    new-instance v0, Lcom/piriform/ccleaner/core/data/c;

    invoke-direct {v0}, Lcom/piriform/ccleaner/core/data/c;-><init>()V

    goto :goto_1

    .line 36
    :cond_5
    const-string/jumbo v0, "display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 39
    :cond_6
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 41
    :cond_7
    const-string/jumbo v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 44
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 46
    new-instance v0, Lcom/piriform/ccleaner/core/data/c;

    invoke-direct {v0, v1, v3}, Lcom/piriform/ccleaner/core/data/c;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1
.end method

.method private static b(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 50
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 52
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "display_name"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 54
    :catch_0
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "No permission to access contacts"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 55
    goto :goto_0

    .line 57
    :catch_1
    move-exception v0

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "Handle non standard Contacts app"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Lcom/novoda/notils/c/a/a;->c(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move-object v0, v6

    .line 58
    goto :goto_0
.end method
