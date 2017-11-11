.class final Lcom/piriform/ccleaner/m/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/m/b;
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
        "Landroid/content/pm/ApplicationInfo;",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/m/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/m/b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/piriform/ccleaner/m/b$3;->a:Lcom/piriform/ccleaner/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 1089
    iget-object v0, p0, Lcom/piriform/ccleaner/m/b$3;->a:Lcom/piriform/ccleaner/m/b;

    .line 2022
    iget-object v0, v0, Lcom/piriform/ccleaner/m/b;->a:Lcom/piriform/ccleaner/m/m;

    .line 1089
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/piriform/ccleaner/m/m;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1090
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/piriform/ccleaner/m/b$3;->a:Lcom/piriform/ccleaner/m/b;

    .line 3022
    iget-object v1, v1, Lcom/piriform/ccleaner/m/b;->a:Lcom/piriform/ccleaner/m/m;

    .line 1090
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/m/m;->a(Landroid/content/pm/PackageInfo;)Lcom/piriform/ccleaner/core/data/AndroidPackage;

    move-result-object v0

    goto :goto_0
.end method
