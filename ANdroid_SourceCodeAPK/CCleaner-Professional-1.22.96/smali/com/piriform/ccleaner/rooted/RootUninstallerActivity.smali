.class public Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;
.super Landroid/support/v4/app/i;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/rooted/l$a;
.implements Lcom/piriform/ccleaner/rooted/r$a;


# static fields
.field public static final m:Ljava/lang/String;


# instance fields
.field n:Lcom/piriform/ccleaner/s/j;

.field private o:Lcom/piriform/ccleaner/core/data/AndroidPackage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_KEY_ANDROID_PACKAGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/i;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->setResult(I)V

    .line 69
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->finish()V

    .line 70
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 83
    .line 3053
    new-instance v0, Lcom/piriform/ccleaner/rooted/o;

    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/piriform/ccleaner/rooted/o;-><init>(Landroid/content/Context;Lcom/piriform/ccleaner/rooted/l$a;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/piriform/ccleaner/core/data/AndroidPackage;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->o:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    aput-object v3, v1, v2

    .line 3054
    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/rooted/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/rooted/l;)V
    .locals 3

    .prologue
    .line 59
    .line 2025
    iget-boolean v0, p1, Lcom/piriform/ccleaner/rooted/l;->a:Z

    .line 59
    if-eqz v0, :cond_0

    .line 2029
    iget-object v0, p1, Lcom/piriform/ccleaner/rooted/l;->b:Ljava/lang/String;

    .line 2074
    invoke-static {p0}, Lcom/novoda/notils/c/b/d;->a(Landroid/content/Context;)Lcom/novoda/notils/c/b/c;

    move-result-object v1

    const v2, 0x7f0800f3

    .line 2075
    invoke-interface {v1, v2}, Lcom/novoda/notils/c/b/c;->a(I)V

    .line 2076
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/novoda/notils/c/a/a;->c([Ljava/lang/Object;)V

    .line 2077
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->setResult(I)V

    .line 2078
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->finish()V

    .line 64
    :goto_0
    return-void

    .line 3029
    :cond_0
    iget-object v0, p1, Lcom/piriform/ccleaner/rooted/l;->b:Ljava/lang/String;

    .line 62
    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "Uninstall canceled by user."

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->a(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;)V

    .line 31
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    sget-object v1, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 33
    :cond_0
    const-string/jumbo v0, "Intent data not existing or missing package info. Aborting."

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->a(Ljava/lang/String;)V

    .line 41
    :cond_1
    :goto_0
    return-void

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->n:Lcom/piriform/ccleaner/s/j;

    invoke-interface {v0}, Lcom/piriform/ccleaner/s/j;->m()Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    const-string/jumbo v0, "Device is not rooted. Can\'t uninstall any system app."

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 45
    invoke-super {p0}, Landroid/support/v4/app/i;->onStart()V

    .line 46
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iput-object v0, p0, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->o:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 47
    iget-object v0, p0, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->o:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1103
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 48
    invoke-static {v0}, Lcom/piriform/ccleaner/rooted/r;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/rooted/r;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/piriform/ccleaner/rooted/RootUninstallerActivity;->c()Landroid/support/v4/app/m;

    move-result-object v1

    sget-object v2, Lcom/piriform/ccleaner/rooted/r;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/piriform/ccleaner/rooted/r;->a(Landroid/support/v4/app/m;Ljava/lang/String;)V

    .line 50
    return-void
.end method
