.class public final Lcom/piriform/ccleaner/m/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/pm/PackageManager;

.field private final b:Lcom/piriform/ccleaner/m/h;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/piriform/ccleaner/m/h;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/piriform/ccleaner/m/m;->a:Landroid/content/pm/PackageManager;

    .line 25
    iput-object p2, p0, Lcom/piriform/ccleaner/m/m;->b:Lcom/piriform/ccleaner/m/h;

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/piriform/ccleaner/m/m;->a:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    :cond_0
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Landroid/os/TransactionTooLargeException;

    if-eqz v2, :cond_0

    .line 41
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v2

    invoke-interface {v2}, Lcom/piriform/ccleaner/j/bl;->c()Lcom/piriform/ccleaner/b/e;

    move-result-object v2

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Transaction too large when getting info for package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 42
    invoke-interface {v2, v3, v1}, Lcom/piriform/ccleaner/b/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final a(Landroid/content/pm/PackageInfo;)Lcom/piriform/ccleaner/core/data/AndroidPackage;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/piriform/ccleaner/m/m;->a:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/piriform/ccleaner/m/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/piriform/ccleaner/core/data/AndroidPackage;-><init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V

    goto :goto_0
.end method

.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/piriform/ccleaner/m/m;->b:Lcom/piriform/ccleaner/m/h;

    invoke-interface {v0, p1, p2}, Lcom/piriform/ccleaner/m/h;->a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V

    .line 81
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/m/m;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/piriform/ccleaner/m/m;->a:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 96
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 98
    :cond_0
    return-object v0
.end method
