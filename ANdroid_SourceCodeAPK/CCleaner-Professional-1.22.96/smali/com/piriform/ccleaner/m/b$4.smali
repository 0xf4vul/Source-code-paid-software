.class final Lcom/piriform/ccleaner/m/b$4;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/m/b;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/m/b;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/piriform/ccleaner/m/b$4;->a:Lcom/piriform/ccleaner/m/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 96
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 2105
    const-string/jumbo v0, "com.piriform.ccleaner"

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1099
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 96
    return-object v0

    .line 1099
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
