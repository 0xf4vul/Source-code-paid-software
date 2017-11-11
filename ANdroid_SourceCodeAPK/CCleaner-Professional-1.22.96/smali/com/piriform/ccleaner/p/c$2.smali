.class final Lcom/piriform/ccleaner/p/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/p/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/e;


# direct methods
.method constructor <init>(Lf/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/piriform/ccleaner/p/c$2;->a:Lf/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/piriform/ccleaner/p/c$2;->a:Lf/e;

    invoke-interface {v0, p1}, Lf/e;->onNext(Ljava/lang/Object;)V

    .line 51
    return-void
.end method
