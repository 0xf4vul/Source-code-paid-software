.class final enum Lcom/piriform/ccleaner/appmanager/f$1;
.super Lcom/piriform/ccleaner/appmanager/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/appmanager/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const v0, 0x7f0801ff

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/piriform/ccleaner/appmanager/f;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->f()V

    .line 18
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 12
    .line 1170
    iget-boolean v2, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->h:Z

    if-nez v2, :cond_0

    move v2, v0

    .line 12
    :goto_0
    if-eqz v2, :cond_1

    .line 1227
    iget-object v2, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 12
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 1170
    goto :goto_0

    :cond_1
    move v0, v1

    .line 12
    goto :goto_1
.end method
