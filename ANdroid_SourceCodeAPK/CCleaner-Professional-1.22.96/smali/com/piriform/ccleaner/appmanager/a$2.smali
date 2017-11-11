.class final Lcom/piriform/ccleaner/appmanager/a$2;
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
        "Lcom/piriform/ccleaner/core/data/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/appmanager/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/appmanager/a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/piriform/ccleaner/appmanager/a$2;->a:Lcom/piriform/ccleaner/appmanager/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    check-cast p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 1053
    iget-object v0, p0, Lcom/piriform/ccleaner/appmanager/a$2;->a:Lcom/piriform/ccleaner/appmanager/a;

    .line 2014
    iget-object v4, v0, Lcom/piriform/ccleaner/appmanager/a;->a:Lcom/piriform/ccleaner/appmanager/c;

    .line 2107
    iget-object v1, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 3042
    iget-object v0, v4, Lcom/piriform/ccleaner/appmanager/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3043
    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 3107
    :goto_0
    iget-object v5, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 4051
    iget-object v0, v4, Lcom/piriform/ccleaner/appmanager/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 4060
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 4062
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 4052
    :goto_1
    if-eqz v0, :cond_1

    .line 2038
    :goto_2
    new-instance v0, Lcom/piriform/ccleaner/core/data/b;

    invoke-direct {v0, p1, v1, v2}, Lcom/piriform/ccleaner/core/data/b;-><init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;ZZ)V

    .line 50
    return-object v0

    :cond_2
    move v1, v3

    .line 3047
    goto :goto_0

    :cond_3
    move v0, v3

    .line 4062
    goto :goto_1

    :cond_4
    move v2, v3

    .line 4056
    goto :goto_2
.end method
