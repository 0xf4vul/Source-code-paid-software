.class final Lcom/piriform/ccleaner/rooted/q;
.super Lcom/piriform/ccleaner/rooted/n;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/piriform/ccleaner/rooted/n;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/piriform/ccleaner/rooted/q;->a:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/q;->b:Ljava/util/Queue;

    .line 39
    return-void
.end method

.method private a(Ljava/io/File;Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 138
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 146
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6107
    :cond_0
    iget-object v2, p2, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 149
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    .line 7107
    iget-object v1, p2, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 153
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    if-eqz p0, :cond_0

    const-string/jumbo v0, "rw"

    .line 65
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "mount -o remount,%s /system /system"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    const-string/jumbo v0, "ro"

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/piriform/ccleaner/rooted/q;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/piriform/ccleaner/rooted/q;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    .line 1054
    invoke-static {v1}, Lcom/piriform/ccleaner/rooted/q;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xaaa

    invoke-virtual {p0, v0, v3}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;I)V

    .line 1107
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 2073
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "am force-stop %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    const/16 v3, 0xfff

    invoke-virtual {p0, v0, v3}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;I)V

    .line 2097
    if-eqz p1, :cond_0

    .line 2223
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 2111
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 2101
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;)V

    .line 2103
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/io/File;Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/io/File;Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;)V

    .line 2105
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/io/File;Lcom/piriform/ccleaner/core/data/AndroidPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;)V

    .line 2107
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "Collected list of files/folders to delete"

    aput-object v3, v0, v2

    iget-object v3, p0, Lcom/piriform/ccleaner/rooted/q;->b:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->a([Ljava/lang/Object;)V

    .line 2081
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/q;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2083
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/q;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3119
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "rm -rf %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2091
    const/16 v3, 0xccc

    invoke-virtual {p0, v0, v3}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 4058
    :cond_1
    invoke-static {v2}, Lcom/piriform/ccleaner/rooted/q;->a(Z)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xbbb

    invoke-virtual {p0, v0, v3}, Lcom/piriform/ccleaner/rooted/q;->a(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/q;->b()V

    .line 5223
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 5111
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4124
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    move v0, v2

    .line 50
    goto :goto_1
.end method
