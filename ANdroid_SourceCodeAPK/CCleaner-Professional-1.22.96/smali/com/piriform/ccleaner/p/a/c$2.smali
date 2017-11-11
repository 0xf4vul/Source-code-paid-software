.class final Lcom/piriform/ccleaner/p/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/p/a/c;->a(Lf/c/e;)Lf/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/e",
        "<",
        "Landroid/database/Cursor;",
        "Lf/d",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/c/e;


# direct methods
.method constructor <init>(Lf/c/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a/c$2;->a:Lf/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 47
    check-cast p1, Landroid/database/Cursor;

    .line 1050
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a/c$2;->a:Lf/c/e;

    .line 2077
    new-instance v1, Lcom/piriform/ccleaner/p/a/c$4;

    invoke-direct {v1, p1, v0}, Lcom/piriform/ccleaner/p/a/c$4;-><init>(Landroid/database/Cursor;Lf/c/e;)V

    .line 3065
    new-instance v0, Lcom/piriform/ccleaner/p/a/c$3;

    invoke-direct {v0, p1}, Lcom/piriform/ccleaner/p/a/c$3;-><init>(Landroid/database/Cursor;)V

    .line 3257
    new-instance v2, Lf/e/c$2;

    invoke-direct {v2, v1}, Lf/e/c$2;-><init>(Lf/c/b;)V

    .line 3264
    new-instance v1, Lf/e/c$3;

    invoke-direct {v1, v0}, Lf/e/c$3;-><init>(Lf/c/a;)V

    .line 3269
    new-instance v0, Lf/e/c$b;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lf/e/c$b;-><init>(Lf/c/f;Lf/c/b;B)V

    .line 2056
    invoke-static {v0}, Lf/d;->a(Lf/e/c;)Lf/d;

    move-result-object v0

    .line 47
    return-object v0
.end method
