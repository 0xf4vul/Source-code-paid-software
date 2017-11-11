.class public abstract Lcom/google/android/gms/internal/ui;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation


# static fields
.field public static final a:Lcom/google/android/gms/internal/ui;
    .annotation runtime Lcom/google/android/gms/internal/aag;
    .end annotation
.end field

.field public static final b:Lcom/google/android/gms/internal/ui;
    .annotation runtime Lcom/google/android/gms/internal/aag;
    .end annotation
.end field

.field public static final c:Lcom/google/android/gms/internal/ui;
    .annotation runtime Lcom/google/android/gms/internal/aag;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ui$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ui$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ui;->a:Lcom/google/android/gms/internal/ui;

    new-instance v0, Lcom/google/android/gms/internal/ui$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ui$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ui;->b:Lcom/google/android/gms/internal/ui;

    new-instance v0, Lcom/google/android/gms/internal/ui$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ui$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ui;->c:Lcom/google/android/gms/internal/ui;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
