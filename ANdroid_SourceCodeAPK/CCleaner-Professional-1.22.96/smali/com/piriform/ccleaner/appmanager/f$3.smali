.class final enum Lcom/piriform/ccleaner/appmanager/f$3;
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
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x2

    const v1, 0x7f0801fe

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/piriform/ccleaner/appmanager/f;-><init>(Ljava/lang/String;IIB)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/appmanager/AppManagerActivity;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p1}, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;->f()V

    .line 40
    return-void
.end method

.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;)Z
    .locals 1

    .prologue
    .line 34
    .line 1227
    iget-object v0, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 34
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
