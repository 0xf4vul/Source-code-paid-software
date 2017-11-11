.class public final Lcom/google/android/gms/internal/gs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/auth/a;


# instance fields
.field private a:Lcom/google/android/gms/internal/gv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gv;

    iput-object v0, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/gv;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/auth/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gs;->a:Lcom/google/android/gms/internal/gv;

    return-object v0
.end method
