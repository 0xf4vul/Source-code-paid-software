.class public final Lcom/piriform/ccleaner/f/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/f/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "Android/"

    return-object v0
.end method

.method public final d()Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/io/File;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/io/File;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/io/File;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    .line 1049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 61
    const-string/jumbo v2, "bluetooth"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final h()Ljava/io/File;
    .locals 1

    .prologue
    .line 67
    const-string/jumbo v0, "Android/"

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/io/File;
    .locals 3

    .prologue
    .line 73
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, ".thumbnails"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public final j()Ljava/io/File;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/io/File;

    .line 2049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 80
    const-string/jumbo v2, "Android/data/com.google.android.apps.maps/cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final k()Ljava/io/File;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/io/File;

    .line 3049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 86
    const-string/jumbo v2, "WhatsApp/Media/WhatsApp Images/Sent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final l()Ljava/io/File;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    .line 4049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 92
    const-string/jumbo v2, "WhatsApp/Media/WhatsApp Video/Sent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final m()Ljava/io/File;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Ljava/io/File;

    .line 5049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 98
    const-string/jumbo v2, "WhatsApp/Media/WhatsApp Audio/Sent"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final n()Ljava/io/File;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    .line 6049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "WhatsApp/Media/WhatsApp Voice Notes"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final o()Ljava/io/File;
    .locals 3

    .prologue
    .line 110
    new-instance v0, Ljava/io/File;

    .line 7049
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 110
    const-string/jumbo v2, "WhatsApp/Databases"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
