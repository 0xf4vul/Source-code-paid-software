.class final Lcom/google/android/gms/internal/oq$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ov;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/oq;->a(Lcom/google/android/gms/internal/pn;)Lcom/google/android/gms/internal/ov;
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
.field final synthetic a:Lcom/google/android/gms/internal/nr;

.field final synthetic b:Ljava/lang/reflect/Type;

.field final synthetic c:Lcom/google/android/gms/internal/oq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/oq;Lcom/google/android/gms/internal/nr;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/oq$8;->c:Lcom/google/android/gms/internal/oq;

    iput-object p2, p0, Lcom/google/android/gms/internal/oq$8;->a:Lcom/google/android/gms/internal/nr;

    iput-object p3, p0, Lcom/google/android/gms/internal/oq$8;->b:Ljava/lang/reflect/Type;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/oq$8;->a:Lcom/google/android/gms/internal/nr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nr;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
