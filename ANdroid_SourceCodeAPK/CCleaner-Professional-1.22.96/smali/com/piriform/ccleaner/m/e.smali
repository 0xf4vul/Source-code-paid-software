.class public final Lcom/piriform/ccleaner/m/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/m/h;


# instance fields
.field private final a:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/piriform/ccleaner/m/e;->a:Landroid/content/pm/PackageManager;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V
    .locals 6

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/m/e;->a:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/piriform/ccleaner/m/e;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getPackageSizeInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/pm/IPackageStatsObserver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 26
    new-instance v1, Lcom/piriform/ccleaner/m/j;

    invoke-direct {v1, p1, p2}, Lcom/piriform/ccleaner/m/j;-><init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V

    .line 27
    iget-object v2, p0, Lcom/piriform/ccleaner/m/e;->a:Landroid/content/pm/PackageManager;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1107
    iget-object v5, p1, Lcom/piriform/ccleaner/core/data/AndroidPackage;->b:Ljava/lang/String;

    .line 27
    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 32
    :cond_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/core/m;

    invoke-direct {v1, v0}, Lcom/piriform/ccleaner/core/m;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 28
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method
