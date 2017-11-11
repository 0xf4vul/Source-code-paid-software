.class public final Lcom/piriform/ccleaner/cleaning/advanced/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final deliveryScheduler:Lf/g;

.field private final firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

.field private final ioScheduler:Lf/g;


# direct methods
.method public constructor <init>(Lf/g;Lf/g;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->ioScheduler:Lf/g;

    .line 26
    iput-object p2, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->deliveryScheduler:Lf/g;

    .line 27
    iput-object p3, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 28
    return-void
.end method

.method private static emitterFor(Lcom/google/firebase/auth/FirebaseAuth;)Lf/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ")",
            "Lf/c/b",
            "<",
            "Lf/a",
            "<",
            "Lcom/google/firebase/auth/i;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/x$2;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/cleaning/advanced/x$2;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-object v0
.end method

.method private static nullUsers()Lf/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/c/e",
            "<",
            "Lcom/google/firebase/auth/i;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v0, Lcom/piriform/ccleaner/cleaning/advanced/x$1;

    invoke-direct {v0}, Lcom/piriform/ccleaner/cleaning/advanced/x$1;-><init>()V

    return-object v0
.end method

.method private static signIn(Lcom/google/firebase/auth/FirebaseAuth;)Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            ")",
            "Lf/d",
            "<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p0}, Lcom/piriform/ccleaner/cleaning/advanced/x;->emitterFor(Lcom/google/firebase/auth/FirebaseAuth;)Lf/c/b;

    move-result-object v0

    sget v1, Lf/a$a;->e:I

    invoke-static {v0, v1}, Lf/d;->a(Lf/c/b;I)Lf/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final user()Lf/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lf/d",
            "<",
            "Lcom/google/firebase/auth/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 1000
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->c:Lcom/google/firebase/auth/i;

    .line 31
    invoke-static {v0}, Lf/d;->a(Ljava/lang/Object;)Lf/d;

    move-result-object v0

    .line 32
    invoke-static {}, Lcom/piriform/ccleaner/cleaning/advanced/x;->nullUsers()Lf/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/c/e;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->firebaseAuth:Lcom/google/firebase/auth/FirebaseAuth;

    .line 33
    invoke-static {v1}, Lcom/piriform/ccleaner/cleaning/advanced/x;->signIn(Lcom/google/firebase/auth/FirebaseAuth;)Lf/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/d;->b(Lf/d;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->ioScheduler:Lf/g;

    .line 34
    invoke-virtual {v0, v1}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v0

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/advanced/x;->deliveryScheduler:Lf/g;

    .line 35
    invoke-virtual {v0, v1}, Lf/d;->a(Lf/g;)Lf/d;

    move-result-object v0

    return-object v0
.end method
