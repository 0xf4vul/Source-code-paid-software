.class final Lcom/piriform/ccleaner/b/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/b/b/a;->g()Lf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/a",
        "<",
        "Lcom/piriform/ccleaner/b/b/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/b/b/a;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/b/b/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/piriform/ccleaner/b/b/a$1;->a:Lcom/piriform/ccleaner/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 79
    check-cast p1, Lf/a;

    .line 1082
    iget-object v0, p0, Lcom/piriform/ccleaner/b/b/a$1;->a:Lcom/piriform/ccleaner/b/b/a;

    invoke-static {v0}, Lcom/piriform/ccleaner/b/b/a;->a(Lcom/piriform/ccleaner/b/b/a;)Lcom/google/firebase/b/a;

    move-result-object v0

    .line 2000
    invoke-virtual {v0}, Lcom/google/firebase/b/a;->e()Lcom/google/android/gms/b/e;

    move-result-object v0

    .line 1082
    new-instance v1, Lcom/piriform/ccleaner/b/b/a$1$2;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/b/b/a$1$2;-><init>(Lcom/piriform/ccleaner/b/b/a$1;Lf/a;)V

    .line 1083
    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;

    move-result-object v0

    new-instance v1, Lcom/piriform/ccleaner/b/b/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/b/b/a$1$1;-><init>(Lcom/piriform/ccleaner/b/b/a$1;Lf/a;)V

    .line 1089
    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/e;

    .line 79
    return-void
.end method
