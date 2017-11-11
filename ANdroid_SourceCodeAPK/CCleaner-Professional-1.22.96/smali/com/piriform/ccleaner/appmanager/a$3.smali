.class final Lcom/piriform/ccleaner/appmanager/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/a$3;->a:Lcom/piriform/ccleaner/appmanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 59
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1062
    iget-object v2, p0, Lcom/piriform/ccleaner/appmanager/a$3;->a:Lcom/piriform/ccleaner/appmanager/a;

    .line 2014
    iget-object v2, v2, Lcom/piriform/ccleaner/appmanager/a;->b:Lcom/piriform/ccleaner/f/m;

    .line 3166
    iget-boolean v3, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    .line 2237
    if-eqz v3, :cond_0

    .line 3241
    new-instance v3, Ljava/io/File;

    .line 4223
    iget-object v4, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 3241
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3242
    invoke-interface {v2, v3}, Lcom/piriform/ccleaner/f/m;->c(Ljava/io/File;)Z

    move-result v2

    .line 2237
    if-nez v2, :cond_0

    move v2, v0

    .line 1062
    :goto_0
    if-nez v2, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 59
    return-object v0

    :cond_0
    move v2, v1

    .line 2237
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1062
    goto :goto_1
.end method
