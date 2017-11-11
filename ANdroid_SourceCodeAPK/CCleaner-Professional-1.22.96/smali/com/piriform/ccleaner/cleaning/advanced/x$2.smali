.class final Lcom/piriform/ccleaner/cleaning/advanced/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/piriform/ccleaner/cleaning/advanced/x;->emitterFor(Lcom/google/firebase/auth/FirebaseAuth;)Lf/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lf/c/b",
        "<",
        "Lf/a",
        "<",
        "Lcom/google/firebase/auth/i;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$auth:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/x$2;->val$auth:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lf/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a",
            "<",
            "Lcom/google/firebase/auth/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/x$2;->val$auth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 1000
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    invoke-virtual {v1}, Lcom/google/firebase/auth/i;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    check-cast v0, Lcom/google/android/gms/internal/gv;

    new-instance v1, Lcom/google/android/gms/internal/gs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gs;-><init>(Lcom/google/android/gms/internal/gv;)V

    invoke-static {v1}, Lcom/google/android/gms/b/h;->a(Ljava/lang/Object;)Lcom/google/android/gms/b/e;

    move-result-object v0

    .line 56
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/x$2$1;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/x$2$1;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/x$2;Lf/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/e;

    .line 62
    new-instance v1, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;

    invoke-direct {v1, p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/x$2$2;-><init>(Lcom/piriform/ccleaner/cleaning/advanced/x$2;Lf/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/b/e;->a(Lcom/google/android/gms/b/c;)Lcom/google/android/gms/b/e;

    .line 69
    return-void

    .line 1000
    :cond_0
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->b:Lcom/google/android/gms/internal/fr;

    iget-object v2, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/b;

    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$a;

    invoke-direct {v3, v0}, Lcom/google/firebase/auth/FirebaseAuth$a;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 2000
    new-instance v0, Lcom/google/android/gms/internal/fr$c;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fr$c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fr$c;->a(Lcom/google/firebase/b;)Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gd;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/gd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/fr;->a(Lcom/google/android/gms/internal/gd;)Lcom/google/android/gms/internal/fr$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/fr;->b(Lcom/google/android/gms/internal/as;)Lcom/google/android/gms/b/e;

    move-result-object v0

    goto :goto_0
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, Lf/a;

    invoke-virtual {p0, p1}, Lcom/piriform/ccleaner/cleaning/advanced/x$2;->call(Lf/a;)V

    return-void
.end method
