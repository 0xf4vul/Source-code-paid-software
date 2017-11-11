.class public final Lcom/avast/android/burger/internal/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;ZLandroid/content/ComponentName;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 29
    if-eqz p1, :cond_0

    move v0, v1

    .line 31
    :goto_0
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v3

    .line 32
    if-ne v3, v0, :cond_1

    .line 36
    :goto_1
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2, p2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_1
.end method
