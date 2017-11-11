.class public Lcom/google/android/gms/internal/zzmr;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzmr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aaq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzmr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzmr;->a:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzmr;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzmr;->c:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/aaq;->a(Lcom/google/android/gms/internal/zzmr;Landroid/os/Parcel;)V

    return-void
.end method
