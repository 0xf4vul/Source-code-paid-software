.class final Lcom/google/android/gms/internal/oq$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/oq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ov",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/oq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oq$6;->a:Lcom/google/android/gms/internal/oq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ou;-><init>()V

    return-object v0
.end method
