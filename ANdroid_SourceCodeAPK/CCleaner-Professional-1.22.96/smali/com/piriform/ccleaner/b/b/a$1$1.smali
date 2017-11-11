.class final Lcom/piriform/ccleaner/b/b/a$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/b/b/a$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/b/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lf/a;

.field final synthetic b:Lcom/piriform/ccleaner/b/b/a$1;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/b/a$1;Lf/a;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/a$1$1;->b:Lcom/piriform/ccleaner/b/b/a$1;

    iput-object p2, p0, Lcom/piriform/ccleaner/b/b/a$1$1;->a:Lf/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/b/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/b/e",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a$1$1;->b:Lcom/piriform/ccleaner/b/b/a$1;

    iget-object v0, v0, Lcom/piriform/ccleaner/b/b/a$1;->a:Lcom/piriform/ccleaner/b/b/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/b/b/a;->a(Lcom/piriform/ccleaner/b/b/a;)Lcom/google/firebase/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/b/a;->b()Z

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a$1$1;->a:Lf/a;

    new-instance v1, Lcom/piriform/ccleaner/b/b/a;

    iget-object v2, p0, Lcom/piriform/ccleaner/b/b/a$1$1;->b:Lcom/piriform/ccleaner/b/b/a$1;

    iget-object v2, v2, Lcom/piriform/ccleaner/b/b/a$1;->a:Lcom/piriform/ccleaner/b/b/a;

    invoke-static {v2}, Lcom/piriform/ccleaner/b/b/a;->a(Lcom/piriform/ccleaner/b/b/a;)Lcom/google/firebase/b/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/piriform/ccleaner/b/b/a;-><init>(Lcom/google/firebase/b/a;)V

    invoke-interface {v0, v1}, Lf/a;->onNext(Ljava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a$1$1;->a:Lf/a;

    invoke-interface {v0}, Lf/a;->onCompleted()V

    .line 97
    return-void
.end method
