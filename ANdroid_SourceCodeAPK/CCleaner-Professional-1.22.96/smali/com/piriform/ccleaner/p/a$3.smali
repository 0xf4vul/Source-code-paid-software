.class final Lcom/piriform/ccleaner/p/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/d$c",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/piriform/ccleaner/p/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/p/a;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/piriform/ccleaner/p/a$3;->b:Lcom/piriform/ccleaner/p/a;

    iput-object p2, p0, Lcom/piriform/ccleaner/p/a$3;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lf/d;

    .line 9070
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a$3;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 9453
    invoke-static {p1}, Lf/d/a/aa;->c(Lf/d;)Lf/e/b;

    move-result-object v0

    .line 9071
    invoke-virtual {v0}, Lf/e/b;->d()Lf/d;

    move-result-object v0

    :goto_0
    return-object v0

    .line 9073
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/p/a$3;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9752
    invoke-static {p1, v0}, Lf/d/a/aa;->a(Lf/d;I)Lf/e/b;

    move-result-object v0

    .line 9073
    invoke-virtual {v0}, Lf/e/b;->d()Lf/d;

    move-result-object v0

    goto :goto_0
.end method
